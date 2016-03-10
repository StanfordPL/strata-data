  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  movsbq %bl, %rdx                 #  1     0     4      OPC=movsbq_r64_r8  
  callq .move_032_016_edx_r8w_r9w  #  2     0x4   5      OPC=callq_label    
  notw %r8w                        #  3     0x9   4      OPC=notw_r16       
  movb %r8b, %bl                   #  4     0xd   3      OPC=movb_r8_r8     
  retq                             #  5     0x10  1      OPC=retq           
                                                                            
.size target, .-target
