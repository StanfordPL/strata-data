  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                  #  Line  RIP  Bytes  Opcode                
.target:                #        0    0      OPC=<label>           
  movl %ebx, %r14d      #  1     0    3      OPC=movl_r32_r32      
  cmovngel %r14d, %ecx  #  2     0x3  4      OPC=cmovngel_r32_r32  
  xaddb %bh, %bh        #  3     0x7  3      OPC=xaddb_rh_rh       
  setpo %bh             #  4     0xa  3      OPC=setpo_rh          
  xchgl %ebx, %ecx      #  5     0xd  2      OPC=xchgl_r32_r32     
  retq                  #  6     0xf  1      OPC=retq              
                                                                   
.size target, .-target
