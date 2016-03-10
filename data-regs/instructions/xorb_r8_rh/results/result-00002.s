  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode             
.target:                 #        0    0      OPC=<label>        
  movsbq %bl, %rdx       #  1     0    4      OPC=movsbq_r64_r8  
  movzbl %ah, %ebx       #  2     0x4  3      OPC=movzbl_r32_rh  
  xorq %rdx, %rbx        #  3     0x7  3      OPC=xorq_r64_r64   
  callq .set_szp_for_bl  #  4     0xa  5      OPC=callq_label    
  retq                   #  5     0xf  1      OPC=retq           
                                                                 
.size target, .-target
