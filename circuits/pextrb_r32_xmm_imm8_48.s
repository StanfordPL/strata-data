  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  vmovd %xmm1, %edx  #  1     0     4      OPC=vmovd_r32_xmm   
  movq $0x30, %rbx   #  2     0x4   10     OPC=movq_r64_imm64  
  xaddb %bl, %dl     #  3     0xe   3      OPC=xaddb_r8_r8     
  retq               #  4     0x11  1      OPC=retq            
                                                               
.size target, .-target
