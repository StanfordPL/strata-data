  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  vorps %xmm13, %xmm12, %xmm11         #  2     0x5   5      OPC=vorps_xmm_xmm_xmm    
  mulsd %xmm2, %xmm12                  #  3     0xa   5      OPC=mulsd_xmm_xmm        
  movq %xmm12, %xmm11                  #  4     0xf   5      OPC=movq_xmm_xmm         
  vhaddpd %ymm11, %ymm11, %ymm12       #  5     0x14  5      OPC=vhaddpd_ymm_ymm_ymm  
  movups %xmm12, %xmm1                 #  6     0x19  4      OPC=movups_xmm_xmm       
  retq                                 #  7     0x1d  1      OPC=retq                 
                                                                                      
.size target, .-target
