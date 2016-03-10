  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  movddup %xmm1, %xmm5               #  1     0     4      OPC=movddup_xmm_xmm    
  movq $0x0, %rbx                    #  2     0x4   10     OPC=movq_r64_imm64     
  vmovsldup %xmm5, %xmm1             #  3     0xe   4      OPC=vmovsldup_xmm_xmm  
  callq .move_byte_6_of_ymm1_to_r9b  #  4     0x12  5      OPC=callq_label        
  addb %r9b, %bl                     #  5     0x17  3      OPC=addb_r8_r8         
  retq                               #  6     0x1a  1      OPC=retq               
                                                                                  
.size target, .-target
