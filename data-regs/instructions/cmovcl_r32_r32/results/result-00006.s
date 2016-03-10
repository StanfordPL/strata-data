  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode                
.target:                            #        0    0      OPC=<label>           
  cmovnael %ecx, %ebx               #  1     0    3      OPC=cmovnael_r32_r32  
  callq .move_016_008_bx_r12b_r13b  #  2     0x3  5      OPC=callq_label       
  callq .move_008_016_r12b_r13b_bx  #  3     0x8  5      OPC=callq_label       
  retq                              #  4     0xd  1      OPC=retq              
                                                                               
.size target, .-target
