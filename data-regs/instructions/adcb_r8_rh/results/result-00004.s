  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %r14  #  1     0    4      OPC=movsbq_r64_r8  
  movzbl %ah, %ebx  #  2     0x4  3      OPC=movzbl_r32_rh  
  adcb %r14b, %bl   #  3     0x7  3      OPC=adcb_r8_r8     
  retq              #  4     0xa  1      OPC=retq           
                                                            
.size target, .-target
