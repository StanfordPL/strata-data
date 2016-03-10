  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  setnge %r15b        #  1     0    4      OPC=setnge_r8      
  movsbq %r15b, %rdx  #  2     0x4  4      OPC=movsbq_r64_r8  
  shlb $0x1, %dl      #  3     0x8  2      OPC=shlb_r8_one    
  setbe %ah           #  4     0xa  3      OPC=setbe_rh       
  retq                #  5     0xd  1      OPC=retq           
                                                              
.size target, .-target
