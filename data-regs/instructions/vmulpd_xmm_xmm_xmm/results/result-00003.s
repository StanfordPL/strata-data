  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  mulpd %xmm3, %xmm2                  #  1     0     4      OPC=mulpd_xmm_xmm       
  vmovsd %xmm2, %xmm2, %xmm1          #  2     0x4   4      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_byte_23_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label         
  callq .move_r9b_to_byte_28_of_ymm1  #  4     0xd   5      OPC=callq_label         
  retq                                #  5     0x12  1      OPC=retq                
                                                                                    
.size target, .-target
