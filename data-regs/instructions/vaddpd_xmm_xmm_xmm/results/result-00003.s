  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label         
  popcntw %r8w, %r15w                 #  2     0x5   6      OPC=popcntw_r16_r16     
  vmovdqu %xmm2, %xmm2                #  3     0xb   4      OPC=vmovdqu_xmm_xmm     
  callq .read_cf_into_rbx             #  4     0xf   5      OPC=callq_label         
  callq .move_byte_2_of_rbx_to_r8b    #  5     0x14  5      OPC=callq_label         
  vmovupd %xmm3, %xmm1                #  6     0x19  4      OPC=vmovupd_xmm_xmm     
  vaddpd %ymm1, %ymm2, %ymm2          #  7     0x1d  4      OPC=vaddpd_ymm_ymm_ymm  
  vmovdqa %xmm2, %xmm1                #  8     0x21  4      OPC=vmovdqa_xmm_xmm     
  callq .move_r8b_to_byte_20_of_ymm1  #  9     0x25  5      OPC=callq_label         
  retq                                #  10    0x2a  1      OPC=retq                
                                                                                    
.size target, .-target
