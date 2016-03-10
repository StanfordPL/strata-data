  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label   
  salq $0x1, %rbx          #  2     0x5   3      OPC=salq_r64_one  
  decw %bx                 #  3     0x8   3      OPC=decw_r16      
  addb %bh, %bh            #  4     0xb   2      OPC=addb_rh_rh    
  rclq $0x1, %rbx          #  5     0xd   3      OPC=rclq_r64_one  
  addb %bh, %bh            #  6     0x10  2      OPC=addb_rh_rh    
  retq                     #  7     0x12  1      OPC=retq          
                                                                   
.size target, .-target
