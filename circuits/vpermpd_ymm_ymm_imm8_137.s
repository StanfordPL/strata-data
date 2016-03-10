  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vbroadcastsd %xmm2, %ymm14            #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vunpcklpd %ymm2, %ymm14, %ymm1        #  2     0x5   4      OPC=vunpcklpd_ymm_ymm_ymm  
  movdqu %xmm2, %xmm1                   #  3     0x9   4      OPC=movdqu_xmm_xmm         
  callq .move_256_128_ymm1_xmm12_xmm13  #  4     0xd   5      OPC=callq_label            
  vmaxss %xmm1, %xmm13, %xmm11          #  5     0x12  4      OPC=vmaxss_xmm_xmm_xmm     
  vmovupd %xmm11, %xmm4                 #  6     0x16  5      OPC=vmovupd_xmm_xmm        
  unpckhpd %xmm4, %xmm1                 #  7     0x1b  4      OPC=unpckhpd_xmm_xmm       
  retq                                  #  8     0x1f  1      OPC=retq                   
                                                                                         
.size target, .-target
