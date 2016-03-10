  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                   
.target:                   #        0    0      OPC=<label>              
  movd %xmm1, %r11d        #  1     0    5      OPC=movd_r32_xmm         
  vcvttss2sil %xmm1, %ebx  #  2     0x5  4      OPC=vcvttss2sil_r32_xmm  
  xchgl %r11d, %ebx        #  3     0x9  3      OPC=xchgl_r32_r32        
  retq                     #  4     0xc  1      OPC=retq                 
                                                                         
.size target, .-target
