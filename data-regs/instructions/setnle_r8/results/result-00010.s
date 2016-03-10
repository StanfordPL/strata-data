  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  setle %r15b                        #  1     0     4      OPC=setle_r8     
  decb %r15b                         #  2     0x4   3      OPC=decb_r8      
  callq .read_sf_into_rbx            #  3     0x7   5      OPC=callq_label  
  callq .move_032_016_ebx_r12w_r13w  #  4     0xc   5      OPC=callq_label  
  movb %r12b, %bl                    #  5     0x11  3      OPC=movb_r8_r8   
  retq                               #  6     0x14  1      OPC=retq         
                                                                            
.size target, .-target
