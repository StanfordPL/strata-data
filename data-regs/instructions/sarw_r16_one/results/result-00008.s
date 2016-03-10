  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %bx, %rdx  #  1     0    4      OPC=movswq_r64_r16  
  subb %dh, %bh     #  2     0x4  2      OPC=subb_rh_rh      
  sarq $0x1, %rdx   #  3     0x6  3      OPC=sarq_r64_one    
  xchgw %dx, %bx    #  4     0x9  3      OPC=xchgw_r16_r16   
  retq              #  5     0xc  1      OPC=retq            
                                                             
.size target, .-target
