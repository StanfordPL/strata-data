  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vbroadcastss %xmm1, %xmm5          #  1     0     5      OPC=vbroadcastss_xmm_xmm      
  vmovhlps %xmm1, %xmm1, %xmm9       #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm      
  callq .move_128_064_xmm1_r8_r9     #  3     0x9   5      OPC=callq_label               
  vunpcklps %ymm5, %ymm9, %ymm15     #  4     0xe   4      OPC=vunpcklps_ymm_ymm_ymm     
  vfnmsub231ss %xmm15, %xmm1, %xmm1  #  5     0x12  5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  cvttss2sil %xmm1, %ebx             #  6     0x17  4      OPC=cvttss2sil_r32_xmm        
  xchgl %ebx, %r9d                   #  7     0x1b  3      OPC=xchgl_r32_r32             
  retq                               #  8     0x1e  1      OPC=retq                      
                                                                                         
.size target, .-target
