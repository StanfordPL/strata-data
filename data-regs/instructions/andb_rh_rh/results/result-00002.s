  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  movsbl %bh, %edx         #  1     0    3      OPC=movsbl_r32_rh  
  andb %dl, %ah            #  2     0x3  2      OPC=andb_rh_r8     
  callq .read_of_into_rbx  #  3     0x5  5      OPC=callq_label    
  rclb $0x1, %bh           #  4     0xa  2      OPC=rclb_rh_one    
  retq                     #  5     0xc  1      OPC=retq           
                                                                   
.size target, .-target
