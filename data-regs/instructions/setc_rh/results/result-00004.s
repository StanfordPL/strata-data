  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .read_cf_into_rbx           #  1     0     5      OPC=callq_label     
  movswq %bx, %rcx                  #  2     0x5   4      OPC=movswq_r64_r16  
  callq .move_064_032_rcx_r8d_r9d   #  3     0x9   5      OPC=callq_label     
  callq .move_r8b_to_byte_2_of_rbx  #  4     0xe   5      OPC=callq_label     
  movb %bl, %ah                     #  5     0x13  2      OPC=movb_rh_r8      
  retq                              #  6     0x15  1      OPC=retq            
                                                                              
.size target, .-target
