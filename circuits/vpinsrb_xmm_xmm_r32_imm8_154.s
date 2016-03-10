  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  salb $0x1, %r8b                           #  2     0x5   3      OPC=salb_r8_one      
  vmovdqa %xmm2, %xmm1                      #  3     0x8   4      OPC=vmovdqa_xmm_xmm  
  xchgw %bx, %r8w                           #  4     0xc   4      OPC=xchgw_r16_r16    
  callq .move_r8b_to_byte_10_of_ymm1        #  5     0x10  5      OPC=callq_label      
  retq                                      #  6     0x15  1      OPC=retq             
                                                                                       
.size target, .-target
