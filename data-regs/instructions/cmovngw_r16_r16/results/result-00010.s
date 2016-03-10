  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswl %cx, %edx    #  1     0    3      OPC=movswl_r32_r16   
  setle %ch           #  2     0x3  3      OPC=setle_rh         
  shlb $0x1, %ch      #  3     0x6  2      OPC=shlb_rh_one      
  cmovnzl %edx, %ebx  #  4     0x8  3      OPC=cmovnzl_r32_r32  
  retq                #  5     0xb  1      OPC=retq             
                                                                
.size target, .-target
