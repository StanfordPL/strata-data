  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  seto %ah           #  1     0    3      OPC=seto_rh         
  shlb $0x1, %ah     #  2     0x3  2      OPC=shlb_rh_one     
  xchgl %ebx, %ecx   #  3     0x5  2      OPC=xchgl_r32_r32   
  cmovzq %rcx, %rbx  #  4     0x7  4      OPC=cmovzq_r64_r64  
  retq               #  5     0xb  1      OPC=retq            
                                                              
.size target, .-target
