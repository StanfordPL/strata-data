  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  movzbq %cl, %rdx                #  1     0     4      OPC=movzbq_r64_r8  
  movb %cl, %ch                   #  2     0x4   2      OPC=movb_rh_r8     
  callq .move_016_008_cx_r8b_r9b  #  3     0x6   5      OPC=callq_label    
  negl %edx                       #  4     0xb   2      OPC=negl_r32       
  xaddb %dl, %bl                  #  5     0xd   3      OPC=xaddb_r8_r8    
  cmpb %r9b, %dl                  #  6     0x10  3      OPC=cmpb_r8_r8     
  retq                            #  7     0x13  1      OPC=retq           
                                                                           
.size target, .-target
