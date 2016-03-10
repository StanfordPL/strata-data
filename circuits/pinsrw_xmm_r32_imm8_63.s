  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                   
.target:                              #        0     0      OPC=<label>              
  vcvtdq2ps %xmm1, %xmm5              #  1     0     4      OPC=vcvtdq2ps_xmm_xmm    
  vcvttss2sil %xmm5, %edi             #  2     0x4   4      OPC=vcvttss2sil_r32_xmm  
  callq .move_016_008_bx_r8b_r9b      #  3     0x8   5      OPC=callq_label          
  callq .move_r9b_to_byte_15_of_ymm1  #  4     0xd   5      OPC=callq_label          
  xaddq %rdi, %rdi                    #  5     0x12  4      OPC=xaddq_r64_r64        
  cmovngew %bx, %r8w                  #  6     0x16  5      OPC=cmovngew_r16_r16     
  callq .move_r8b_to_byte_14_of_ymm1  #  7     0x1b  5      OPC=callq_label          
  retq                                #  8     0x20  1      OPC=retq                 
                                                                                     
.size target, .-target
