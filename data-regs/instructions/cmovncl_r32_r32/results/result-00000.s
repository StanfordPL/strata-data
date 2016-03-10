  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setnae %r12b        #  1     0    4      OPC=setnae_r8        
  salb $0x1, %r12b    #  2     0x4  3      OPC=salb_r8_one      
  cmovbel %ecx, %ebx  #  3     0x7  3      OPC=cmovbel_r32_r32  
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
