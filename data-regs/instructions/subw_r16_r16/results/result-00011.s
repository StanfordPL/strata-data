  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                      #  Line  RIP  Bytes  Opcode                 
.target:                    #        0    0      OPC=<label>            
  movzbq %cl, %r13          #  1     0    4      OPC=movzbq_r64_r8      
  andnl %r13d, %r13d, %r9d  #  2     0x4  5      OPC=andnl_r32_r32_r32  
  sbbw %cx, %bx             #  3     0x9  3      OPC=sbbw_r16_r16       
  retq                      #  4     0xc  1      OPC=retq               
                                                                        
.size target, .-target
