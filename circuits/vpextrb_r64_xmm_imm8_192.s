  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movq %xmm1, %rbx  #  1     0    5      OPC=movq_r64_xmm   
  movzbl %bl, %ebx  #  2     0x5  3      OPC=movzbl_r32_r8  
  retq              #  3     0x8  1      OPC=retq           
                                                            
.size target, .-target
