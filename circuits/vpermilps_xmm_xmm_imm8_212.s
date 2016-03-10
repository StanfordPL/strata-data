  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movdqu %xmm2, %xmm12            #  1     0     5      OPC=movdqu_xmm_xmm         
  vmovddup %xmm12, %xmm3          #  2     0x5   5      OPC=vmovddup_xmm_xmm       
  vunpckhps %xmm12, %xmm3, %xmm1  #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  punpckhqdq %xmm1, %xmm3         #  4     0xf   4      OPC=punpckhqdq_xmm_xmm     
  vmovdqu %ymm3, %ymm1            #  5     0x13  4      OPC=vmovdqu_ymm_ymm        
  retq                            #  6     0x17  1      OPC=retq                   
                                                                                   
.size target, .-target
