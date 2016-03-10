  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x5, %r9                    #  1     0     10     OPC=movq_r64_imm64  
  callq .read_cf_into_rbx           #  2     0xa   5      OPC=callq_label     
  shll $0x1, %r9d                   #  3     0xf   3      OPC=shll_r32_one    
  incw %r9w                         #  4     0x12  4      OPC=incw_r16        
  callq .move_r9b_to_byte_7_of_rbx  #  5     0x16  5      OPC=callq_label     
  retq                              #  6     0x1b  1      OPC=retq            
                                                                              
.size target, .-target
