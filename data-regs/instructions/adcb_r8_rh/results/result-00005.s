  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movzbl %ah, %esp   #  1     0    3      OPC=movzbl_r32_rh  
  adcb %bl, %spl     #  2     0x3  3      OPC=adcb_r8_r8     
  movsbq %spl, %rbx  #  3     0x6  4      OPC=movsbq_r64_r8  
  retq               #  4     0xa  1      OPC=retq           
                                                             
.size target, .-target
