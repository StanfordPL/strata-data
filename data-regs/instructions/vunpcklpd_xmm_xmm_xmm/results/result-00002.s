  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r12_r13          #  1     0     5      OPC=callq_label      
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label      
  xaddl %r13d, %r8d                         #  3     0xa   4      OPC=xaddl_r32_r32    
  vmovupd %xmm3, %xmm1                      #  4     0xe   4      OPC=vmovupd_xmm_xmm  
  callq .move_064_128_r12_r13_xmm1          #  5     0x12  5      OPC=callq_label      
  movlhps %xmm3, %xmm1                      #  6     0x17  3      OPC=movlhps_xmm_xmm  
  retq                                      #  7     0x1a  1      OPC=retq             
                                                                                       
.size target, .-target
