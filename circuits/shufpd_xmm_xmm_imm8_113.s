  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vsubsd %xmm1, %xmm2, %xmm11     #  1     0     4      OPC=vsubsd_xmm_xmm_xmm     
  vsubsd %xmm2, %xmm2, %xmm4      #  2     0x4   4      OPC=vsubsd_xmm_xmm_xmm     
  vphsubd %ymm11, %ymm4, %ymm5    #  3     0x8   5      OPC=vphsubd_ymm_ymm_ymm    
  vunpcklpd %xmm2, %xmm5, %xmm10  #  4     0xd   4      OPC=vunpcklpd_xmm_xmm_xmm  
  punpckhqdq %xmm10, %xmm1        #  5     0x11  5      OPC=punpckhqdq_xmm_xmm     
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
