  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  callq .read_sf_into_rcx          #  1     0     5      OPC=callq_label   
  decl %ecx                        #  2     0x5   2      OPC=decl_r32      
  callq .move_032_016_ecx_r8w_r9w  #  3     0x7   5      OPC=callq_label   
  shlw $0x1, %r9w                  #  4     0xc   4      OPC=shlw_r16_one  
  setnc %bl                        #  5     0x10  3      OPC=setnc_r8      
  retq                             #  6     0x13  1      OPC=retq          
                                                                           
.size target, .-target
