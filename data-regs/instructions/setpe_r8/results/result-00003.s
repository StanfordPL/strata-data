  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .read_pf_into_rcx         #  1     0     5      OPC=callq_label     
  decq %rcx                       #  2     0x5   3      OPC=decq_r64        
  movq $0xfffffffffffffffb, %rbx  #  3     0x8   10     OPC=movq_r64_imm64  
  salq $0x1, %rbx                 #  4     0x12  3      OPC=salq_r64_one    
  callq .read_sf_into_rbx         #  5     0x15  5      OPC=callq_label     
  rclb $0x1, %bh                  #  6     0x1a  2      OPC=rclb_rh_one     
  xorb %bh, %bl                   #  7     0x1c  2      OPC=xorb_r8_rh      
  xaddb %cl, %bl                  #  8     0x1e  3      OPC=xaddb_r8_r8     
  incq %rbx                       #  9     0x21  3      OPC=incq_r64        
  retq                            #  10    0x24  1      OPC=retq            
                                                                            
.size target, .-target
