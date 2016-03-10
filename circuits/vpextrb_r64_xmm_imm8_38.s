  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_byte_6_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label   
  xorq %rbx, %rbx                    #  2     0x5   3      OPC=xorq_r64_r64  
  seto %ch                           #  3     0x8   3      OPC=seto_rh       
  cmpb %bh, %ch                      #  4     0xb   2      OPC=cmpb_rh_rh    
  callq .read_of_into_rbx            #  5     0xd   5      OPC=callq_label   
  addb %r8b, %bl                     #  6     0x12  3      OPC=addb_r8_r8    
  retq                               #  7     0x15  1      OPC=retq          
                                                                             
.size target, .-target
