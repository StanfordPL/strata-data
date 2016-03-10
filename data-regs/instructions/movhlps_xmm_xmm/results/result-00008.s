  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label              
  movsbq %al, %r8                           #  2     0x5   4      OPC=movsbq_r64_r8            
  callq .move_r8b_to_byte_2_of_ymm1         #  3     0x9   5      OPC=callq_label              
  vmaxss %xmm2, %xmm1, %xmm3                #  4     0xe   4      OPC=vmaxss_xmm_xmm_xmm       
  vpunpckhqdq %xmm3, %xmm2, %xmm13          #  5     0x12  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movaps %xmm13, %xmm1                      #  6     0x16  4      OPC=movaps_xmm_xmm           
  retq                                      #  7     0x1a  1      OPC=retq                     
                                                                                               
.size target, .-target
