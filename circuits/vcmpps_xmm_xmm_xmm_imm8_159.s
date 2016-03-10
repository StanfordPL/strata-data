  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  vzeroall                                  #  1     0     3      OPC=vzeroall              
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x3   5      OPC=callq_label           
  notl %edx                                 #  3     0x8   2      OPC=notl_r32              
  movd %edx, %xmm10                         #  4     0xa   5      OPC=movd_xmm_r32          
  vpbroadcastw %xmm10, %xmm1                #  5     0xf   5      OPC=vpbroadcastw_xmm_xmm  
  callq .move_r8b_to_byte_23_of_ymm1        #  6     0x14  5      OPC=callq_label           
  retq                                      #  7     0x19  1      OPC=retq                  
                                                                                            
.size target, .-target
