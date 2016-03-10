  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rbx  #  1     0    5      OPC=callq_label   
  shll $0x1, %ebx          #  2     0x5  2      OPC=shll_r32_one  
  setbe %ah                #  3     0x7  3      OPC=setbe_rh      
  retq                     #  4     0xa  1      OPC=retq          
                                                                  
.size target, .-target
