  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vbroadcastsd %xmm3, %ymm13      #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vmovupd %ymm13, %ymm15          #  2     0x5   5      OPC=vmovupd_ymm_ymm        
  vunpckhpd %xmm15, %xmm3, %xmm5  #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vbroadcastsd %xmm5, %ymm5       #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm5, %ymm15, %ymm1  #  5     0x14  4      OPC=vunpckhpd_ymm_ymm_ymm  
  movapd %xmm2, %xmm1             #  6     0x18  4      OPC=movapd_xmm_xmm         
  retq                            #  7     0x1c  1      OPC=retq                   
                                                                                   
.size target, .-target
