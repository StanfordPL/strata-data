  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label        
  vmovq %r11, %xmm15                #  2     0x5   5      OPC=vmovq_xmm_r64      
  vmovddup %xmm15, %xmm10           #  3     0xa   5      OPC=vmovddup_xmm_xmm   
  vorps %ymm10, %ymm15, %ymm1       #  4     0xf   5      OPC=vorps_ymm_ymm_ymm  
  retq                              #  5     0x14  1      OPC=retq               
                                                                                 
.size target, .-target
