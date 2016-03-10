  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm1, %xmm2       #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm  
  vmovd %xmm2, %ebx               #  3     0xa   4      OPC=vmovd_r32_xmm         
  xaddl %ebx, %r9d                #  4     0xe   4      OPC=xaddl_r32_r32         
  retq                            #  5     0x12  1      OPC=retq                  
                                                                                  
.size target, .-target
