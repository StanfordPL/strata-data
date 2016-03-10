  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorb %bh, %bh     #  1     0    2      OPC=xorb_rh_rh      
  movzwq %bx, %rcx  #  2     0x2  4      OPC=movzwq_r64_r16  
  xaddb %cl, %bh    #  3     0x6  3      OPC=xaddb_rh_r8     
  sarq $0x1, %rcx   #  4     0x9  3      OPC=sarq_r64_one    
  sbbb %ah, %bh     #  5     0xc  2      OPC=sbbb_rh_rh      
  retq              #  6     0xe  1      OPC=retq            
                                                             
.size target, .-target
