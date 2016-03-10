  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode            
.target:                  #        0    0      OPC=<label>       
  shll $0x1, %ebx         #  1     0    2      OPC=shll_r32_one  
  callq .set_szp_for_ebx  #  2     0x2  5      OPC=callq_label   
  retq                    #  3     0x7  1      OPC=retq          
                                                                 
.size target, .-target
