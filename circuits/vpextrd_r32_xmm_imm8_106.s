  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vpbroadcastw %xmm1, %ymm6        #  1     0     5      OPC=vpbroadcastw_ymm_xmm   
  vunpckhpd %xmm6, %xmm1, %xmm12   #  2     0x5   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vunpcklpd %xmm6, %xmm12, %xmm13  #  3     0x9   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovd %xmm13, %r9d               #  4     0xd   5      OPC=vmovd_r32_xmm          
  vcvttsd2sil %xmm13, %ebx         #  5     0x12  5      OPC=vcvttsd2sil_r32_xmm    
  xchgl %r9d, %ebx                 #  6     0x17  3      OPC=xchgl_r32_r32          
  retq                             #  7     0x1a  1      OPC=retq                   
                                                                                    
.size target, .-target
