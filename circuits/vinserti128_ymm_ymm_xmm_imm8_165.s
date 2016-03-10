  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  vpbroadcastq %xmm3, %ymm0                 #  1     0     5      OPC=vpbroadcastq_ymm_xmm     
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label              
  callq .move_032_064_r8d_r9d_rbx           #  3     0xa   5      OPC=callq_label              
  movq %rbx, %xmm1                          #  4     0xf   5      OPC=movq_xmm_r64             
  vpbroadcastq %xmm1, %ymm10                #  5     0x14  5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %ymm10, %ymm0, %ymm1          #  6     0x19  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movups %xmm2, %xmm1                       #  7     0x1e  3      OPC=movups_xmm_xmm           
  retq                                      #  8     0x21  1      OPC=retq                     
                                                                                               
.size target, .-target
