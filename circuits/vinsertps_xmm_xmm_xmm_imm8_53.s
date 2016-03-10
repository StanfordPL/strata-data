  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_128_064_xmm2_r8_r9                  #  2     0x5   5      OPC=callq_label             
  vcvtsd2ss %xmm9, %xmm2, %xmm1                   #  3     0xa   5      OPC=vcvtsd2ss_xmm_xmm_xmm   
  vbroadcastss %xmm8, %ymm3                       #  4     0xf   5      OPC=vbroadcastss_ymm_xmm    
  movd %r8d, %xmm13                               #  5     0x14  5      OPC=movd_xmm_r32            
  vpunpckhdq %xmm3, %xmm13, %xmm3                 #  6     0x19  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movlhps %xmm3, %xmm1                            #  7     0x1d  3      OPC=movlhps_xmm_xmm         
  retq                                            #  8     0x20  1      OPC=retq                    
                                                                                                    
.size target, .-target
