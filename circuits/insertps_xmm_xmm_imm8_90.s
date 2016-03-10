  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode               
.target:                                          #        0    0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label      
  movaps %xmm8, %xmm1                             #  2     0x5  4      OPC=movaps_xmm_xmm   
  movlhps %xmm10, %xmm1                           #  3     0x9  4      OPC=movlhps_xmm_xmm  
  retq                                            #  4     0xd  1      OPC=retq             
                                                                                            
.size target, .-target
