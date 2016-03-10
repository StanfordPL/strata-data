  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vpxor %xmm10, %xmm10, %xmm13                    #  1     0     5      OPC=vpxor_xmm_xmm_xmm      
  mulps %xmm2, %xmm1                              #  2     0x5   3      OPC=mulps_xmm_xmm          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label            
  vunpcklps %xmm8, %xmm13, %xmm9                  #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm  
  vhaddpd %ymm9, %ymm9, %ymm11                    #  5     0x12  5      OPC=vhaddpd_ymm_ymm_ymm    
  movupd %xmm11, %xmm1                            #  6     0x17  5      OPC=movupd_xmm_xmm         
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
