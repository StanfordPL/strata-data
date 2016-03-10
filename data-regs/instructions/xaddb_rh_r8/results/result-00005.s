  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movzbq %bl, %rdx                  #  1     0     4      OPC=movzbq_r64_r8  
  movzbl %ah, %ecx                  #  2     0x4   3      OPC=movzbl_r32_rh  
  callq .move_016_008_cx_r12b_r13b  #  3     0x7   5      OPC=callq_label    
  callq .move_008_016_r12b_r13b_bx  #  4     0xc   5      OPC=callq_label    
  addb %dl, %ah                     #  5     0x11  2      OPC=addb_rh_r8     
  retq                              #  6     0x13  1      OPC=retq           
                                                                             
.size target, .-target
