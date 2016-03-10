  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cwtl                            #  2     0xa   1      OPC=cwtl            
  callq .read_of_into_rbx         #  3     0xb   5      OPC=callq_label     
  setnge %ah                      #  4     0x10  3      OPC=setnge_rh       
  addb %bh, %ah                   #  5     0x13  2      OPC=addb_rh_rh      
  cwtl                            #  6     0x15  1      OPC=cwtl            
  retq                            #  7     0x16  1      OPC=retq            
                                                                            
.size target, .-target
