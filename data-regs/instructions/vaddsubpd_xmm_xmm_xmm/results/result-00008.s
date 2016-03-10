  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  vpunpckhqdq %xmm6, %xmm10, %xmm1                #  3     0xa   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movupd %xmm1, %xmm6                             #  4     0xe   4      OPC=movupd_xmm_xmm           
  vsubsd %xmm6, %xmm2, %xmm1                      #  5     0x12  4      OPC=vsubsd_xmm_xmm_xmm       
  addsubpd %xmm3, %xmm1                           #  6     0x16  4      OPC=addsubpd_xmm_xmm         
  retq                                            #  7     0x1a  1      OPC=retq                     
                                                                                                     
.size target, .-target
