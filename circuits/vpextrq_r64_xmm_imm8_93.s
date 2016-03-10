  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vorps %xmm11, %xmm11, %xmm7          #  2     0x5   5      OPC=vorps_xmm_xmm_xmm     
  vbroadcastsd %xmm7, %ymm8            #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm  
  vmovq %xmm8, %rbx                    #  4     0xf   5      OPC=vmovq_r64_xmm         
  retq                                 #  5     0x14  1      OPC=retq                  
                                                                                       
.size target, .-target
