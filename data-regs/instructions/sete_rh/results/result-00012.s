  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label   
  roll $0x1, %ebx          #  2     0x5  2      OPC=roll_r32_one  
  shll $0x1, %ebx          #  3     0x7  2      OPC=shll_r32_one  
  setpo %ah                #  4     0x9  3      OPC=setpo_rh      
  retq                     #  5     0xc  1      OPC=retq          
                                                                  
.size target, .-target
