  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastb %xmm1, %xmm4   #  1     0     5      OPC=vpbroadcastb_xmm_xmm  
  vmulpd %ymm4, %ymm4, %ymm5  #  2     0x5   4      OPC=vmulpd_ymm_ymm_ymm    
  vxorpd %xmm5, %xmm5, %xmm4  #  3     0x9   4      OPC=vxorpd_xmm_xmm_xmm    
  vcvtss2sil %xmm4, %esi      #  4     0xd   4      OPC=vcvtss2sil_r32_xmm    
  vmovmskpd %xmm1, %ebx       #  5     0x11  4      OPC=vmovmskpd_r32_xmm     
  orw %si, %bx                #  6     0x15  3      OPC=orw_r16_r16           
  retq                        #  7     0x18  1      OPC=retq                  
                                                                              
.size target, .-target
