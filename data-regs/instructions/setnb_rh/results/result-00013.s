  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rbx  #  1     0    5      OPC=callq_label   
  decw %bx                 #  2     0x5  3      OPC=decw_r16      
  shll $0x1, %ebx          #  3     0x8  2      OPC=shll_r32_one  
  setnp %ah                #  4     0xa  3      OPC=setnp_rh      
  retq                     #  5     0xd  1      OPC=retq          
                                                                  
.size target, .-target
