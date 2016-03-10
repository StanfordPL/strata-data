  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                
.target:                                #        0    0      OPC=<label>           
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0    5      OPC=callq_label       
  minsd %xmm1, %xmm10                   #  2     0x5  5      OPC=minsd_xmm_xmm     
  vpor %xmm10, %xmm10, %xmm1            #  3     0xa  5      OPC=vpor_xmm_xmm_xmm  
  retq                                  #  4     0xf  1      OPC=retq              
                                                                                   
.size target, .-target
