  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  vpxor %xmm1, %xmm1, %xmm4       #  1     0     4      OPC=vpxor_xmm_xmm_xmm     
  vdivsd %xmm4, %xmm4, %xmm14     #  2     0x4   4      OPC=vdivsd_xmm_xmm_xmm    
  vrsqrtss %xmm14, %xmm14, %xmm4  #  3     0x8   5      OPC=vrsqrtss_xmm_xmm_xmm  
  xorpd %xmm4, %xmm4              #  4     0xd   4      OPC=xorpd_xmm_xmm         
  vmulpd %ymm14, %ymm4, %ymm12    #  5     0x11  5      OPC=vmulpd_ymm_ymm_ymm    
  vandnps %ymm12, %ymm12, %ymm6   #  6     0x16  5      OPC=vandnps_ymm_ymm_ymm   
  movddup %xmm6, %xmm1            #  7     0x1b  4      OPC=movddup_xmm_xmm       
  retq                            #  8     0x1f  1      OPC=retq                  
                                                                                  
.size target, .-target
