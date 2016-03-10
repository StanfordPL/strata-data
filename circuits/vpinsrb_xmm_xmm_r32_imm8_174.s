  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovddup %xmm2, %xmm6               #  1     0     4      OPC=vmovddup_xmm_xmm    
  decb %bh                            #  2     0x4   2      OPC=decb_rh             
  vminss %xmm6, %xmm2, %xmm1          #  3     0x6   4      OPC=vminss_xmm_xmm_xmm  
  movzwl %bx, %r8d                    #  4     0xa   4      OPC=movzwl_r32_r16      
  callq .move_r8b_to_byte_14_of_ymm1  #  5     0xe   5      OPC=callq_label         
  retq                                #  6     0x13  1      OPC=retq                
                                                                                    
.size target, .-target
