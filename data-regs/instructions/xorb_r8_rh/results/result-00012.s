  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  movzbq %bl, %rdx         #  1     0     4      OPC=movzbq_r64_r8  
  movzbl %ah, %eax         #  2     0x4   3      OPC=movzbl_r32_rh  
  xorw %dx, %ax            #  3     0x7   3      OPC=xorw_r16_r16   
  callq .read_cf_into_rbx  #  4     0xa   5      OPC=callq_label    
  xaddl %eax, %ebx         #  5     0xf   3      OPC=xaddl_r32_r32  
  adcb %bl, %al            #  6     0x12  2      OPC=adcb_r8_r8     
  retq                     #  7     0x14  1      OPC=retq           
                                                                    
.size target, .-target
