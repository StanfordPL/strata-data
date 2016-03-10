  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vorpd %ymm3, %ymm3, %ymm1            #  2     0x5   4      OPC=vorpd_ymm_ymm_ymm        
  vrsqrtps %ymm1, %ymm5                #  3     0x9   4      OPC=vrsqrtps_ymm_ymm         
  vfmsub231ps %xmm5, %xmm13, %xmm3     #  4     0xd   5      OPC=vfmsub231ps_xmm_xmm_xmm  
  vunpckhpd %xmm3, %xmm2, %xmm3        #  5     0x12  4      OPC=vunpckhpd_xmm_xmm_xmm    
  punpcklqdq %xmm3, %xmm1              #  6     0x16  4      OPC=punpcklqdq_xmm_xmm       
  retq                                 #  7     0x1a  1      OPC=retq                     
                                                                                          
.size target, .-target
