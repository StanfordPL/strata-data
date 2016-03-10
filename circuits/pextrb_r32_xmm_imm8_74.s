  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  movq $0x6, %r9                     #  1     0     10     OPC=movq_r64_imm64         
  vsqrtps %xmm1, %xmm9               #  2     0xa   4      OPC=vsqrtps_xmm_xmm        
  vunpckhps %xmm1, %xmm9, %xmm1      #  3     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_byte_6_of_ymm1_to_r9b  #  4     0x12  5      OPC=callq_label            
  movq %r9, %rbx                     #  5     0x17  3      OPC=movq_r64_r64           
  retq                               #  6     0x1a  1      OPC=retq                   
                                                                                      
.size target, .-target
